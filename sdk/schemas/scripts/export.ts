/**
 * export.ts — Export GraphQL schema SDL from live API via introspection
 *
 * Uses the standard GraphQL introspection query to fetch the schema
 * from a running cnc server and writes it as SDL (.graphql).
 *
 * Usage:
 *   DATABASE_NAME=agentic-db-<ts> pnpm --filter @agentic-db/schemas run export
 *
 * Requires: cnc server running on port 3000
 */
import * as path from 'path';
import * as fs from 'fs';
import * as http from 'http';
import * as dotenv from 'dotenv';

// Load root env
dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

// Inline introspection query (avoids needing 'graphql' package at this level)
const INTROSPECTION_QUERY = `
  query IntrospectionQuery {
    __schema {
      queryType { name }
      mutationType { name }
      subscriptionType { name }
      types {
        ...FullType
      }
      directives {
        name
        description
        locations
        args { ...InputValue }
      }
    }
  }

  fragment FullType on __Type {
    kind
    name
    description
    fields(includeDeprecated: true) {
      name
      description
      args { ...InputValue }
      type { ...TypeRef }
      isDeprecated
      deprecationReason
    }
    inputFields { ...InputValue }
    interfaces { ...TypeRef }
    enumValues(includeDeprecated: true) {
      name
      description
      isDeprecated
      deprecationReason
    }
    possibleTypes { ...TypeRef }
  }

  fragment InputValue on __InputValue {
    name
    description
    type { ...TypeRef }
    defaultValue
  }

  fragment TypeRef on __Type {
    kind
    name
    ofType {
      kind
      name
      ofType {
        kind
        name
        ofType {
          kind
          name
          ofType {
            kind
            name
            ofType {
              kind
              name
              ofType {
                kind
                name
                ofType {
                  kind
                  name
                }
              }
            }
          }
        }
      }
    }
  }
`;

// ---------------------------------------------------------------------------
// Minimal introspection-to-SDL printer (no 'graphql' package dependency)
// ---------------------------------------------------------------------------

interface IntrospectionType {
  kind: string;
  name: string;
  description?: string | null;
  fields?: IntrospectionField[] | null;
  inputFields?: IntrospectionInputValue[] | null;
  interfaces?: IntrospectionTypeRef[] | null;
  enumValues?: IntrospectionEnumValue[] | null;
  possibleTypes?: IntrospectionTypeRef[] | null;
}

interface IntrospectionField {
  name: string;
  description?: string | null;
  args: IntrospectionInputValue[];
  type: IntrospectionTypeRef;
  isDeprecated: boolean;
  deprecationReason?: string | null;
}

interface IntrospectionInputValue {
  name: string;
  description?: string | null;
  type: IntrospectionTypeRef;
  defaultValue?: string | null;
}

interface IntrospectionTypeRef {
  kind: string;
  name?: string | null;
  ofType?: IntrospectionTypeRef | null;
}

interface IntrospectionEnumValue {
  name: string;
  description?: string | null;
  isDeprecated: boolean;
  deprecationReason?: string | null;
}

interface IntrospectionSchema {
  queryType: { name: string } | null;
  mutationType: { name: string } | null;
  subscriptionType: { name: string } | null;
  types: IntrospectionType[];
}

function printTypeRef(ref: IntrospectionTypeRef): string {
  if (ref.kind === 'NON_NULL') {
    return `${printTypeRef(ref.ofType!)}!`;
  }
  if (ref.kind === 'LIST') {
    return `[${printTypeRef(ref.ofType!)}]`;
  }
  return ref.name ?? 'Unknown';
}

function printDescription(desc: string | null | undefined, indent = ''): string {
  if (!desc) return '';
  if (desc.includes('\n')) {
    return `${indent}"""\n${desc
      .split('\n')
      .map((l) => `${indent}${l}`)
      .join('\n')}\n${indent}"""\n`;
  }
  return `${indent}"${desc.replace(/"/g, '\\"')}"\n`;
}

function printArgs(args: IntrospectionInputValue[], indent: string): string {
  if (!args.length) return '';
  if (args.length === 1 && !args[0].description) {
    const a = args[0];
    const def = a.defaultValue ? ` = ${a.defaultValue}` : '';
    return `(${a.name}: ${printTypeRef(a.type)}${def})`;
  }
  const lines = args.map((a) => {
    const desc = printDescription(a.description, `${indent}  `);
    const def = a.defaultValue ? ` = ${a.defaultValue}` : '';
    return `${desc}${indent}  ${a.name}: ${printTypeRef(a.type)}${def}`;
  });
  return `(\n${lines.join('\n')}\n${indent})`;
}

function printDeprecated(field: { isDeprecated: boolean; deprecationReason?: string | null }): string {
  if (!field.isDeprecated) return '';
  if (field.deprecationReason) {
    return ` @deprecated(reason: "${field.deprecationReason.replace(/"/g, '\\"')}")`;
  }
  return ' @deprecated';
}

function introspectionToSDL(schema: IntrospectionSchema): string {
  const builtins = new Set([
    'String', 'Int', 'Float', 'Boolean', 'ID',
    '__Schema', '__Type', '__Field', '__InputValue',
    '__EnumValue', '__Directive', '__DirectiveLocation',
  ]);

  const userTypes = schema.types
    .filter((t) => !builtins.has(t.name) && !t.name.startsWith('__'))
    .sort((a, b) => {
      const order: Record<string, number> = { SCALAR: 0, ENUM: 1, INTERFACE: 2, OBJECT: 3, INPUT_OBJECT: 4, UNION: 5 };
      return (order[a.kind] ?? 9) - (order[b.kind] ?? 9) || a.name.localeCompare(b.name);
    });

  const chunks: string[] = [];

  for (const t of userTypes) {
    const desc = printDescription(t.description);

    switch (t.kind) {
      case 'SCALAR':
        chunks.push(`${desc}scalar ${t.name}`);
        break;

      case 'ENUM': {
        const vals = (t.enumValues ?? [])
          .map((v) => {
            const vDesc = printDescription(v.description, '  ');
            return `${vDesc}  ${v.name}${printDeprecated(v)}`;
          })
          .join('\n');
        chunks.push(`${desc}enum ${t.name} {\n${vals}\n}`);
        break;
      }

      case 'INTERFACE':
      case 'OBJECT': {
        const keyword = t.kind === 'INTERFACE' ? 'interface' : 'type';
        const ifaces = (t.interfaces ?? []).map((i) => i.name).filter(Boolean);
        const impl = ifaces.length ? ` implements ${ifaces.join(' & ')}` : '';
        const fields = (t.fields ?? [])
          .map((f) => {
            const fDesc = printDescription(f.description, '  ');
            return `${fDesc}  ${f.name}${printArgs(f.args, '  ')}: ${printTypeRef(f.type)}${printDeprecated(f)}`;
          })
          .join('\n');
        chunks.push(`${desc}${keyword} ${t.name}${impl} {\n${fields}\n}`);
        break;
      }

      case 'INPUT_OBJECT': {
        const fields = (t.inputFields ?? [])
          .map((f) => {
            const fDesc = printDescription(f.description, '  ');
            const def = f.defaultValue ? ` = ${f.defaultValue}` : '';
            return `${fDesc}  ${f.name}: ${printTypeRef(f.type)}${def}`;
          })
          .join('\n');
        chunks.push(`${desc}input ${t.name} {\n${fields}\n}`);
        break;
      }

      case 'UNION': {
        const members = (t.possibleTypes ?? []).map((p) => p.name).filter(Boolean);
        chunks.push(`${desc}union ${t.name} = ${members.join(' | ')}`);
        break;
      }
    }
  }

  return chunks.join('\n\n') + '\n';
}

// ---------------------------------------------------------------------------

function httpPost(
  hostname: string,
  port: number,
  reqPath: string,
  headers: Record<string, string | number>,
  body: string,
): Promise<string> {
  return new Promise((resolve, reject) => {
    const req = http.request(
      {
        hostname,
        port,
        path: reqPath,
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Content-Length': Buffer.byteLength(body),
          ...headers,
        },
      },
      (res) => {
        let data = '';
        res.on('data', (chunk) => (data += chunk));
        res.on('end', () => {
          if (res.statusCode && res.statusCode >= 400) {
            reject(new Error(`HTTP ${res.statusCode}: ${data.slice(0, 500)}`));
          } else {
            resolve(data);
          }
        });
      },
    );
    req.on('error', reject);
    req.write(body);
    req.end();
  });
}

async function main() {
  const DATABASE_NAME = process.env.DATABASE_NAME || 'agentic-db';
  const CNC_HOST = process.env.CNC_HOST || '::1';
  const CNC_PORT = parseInt(process.env.CNC_PORT || '3000', 10);
  const OUTPUT_DIR = path.resolve(__dirname, '..');
  const OUTPUT_FILE = 'agentic-db.graphql';

  // Derive the app-public schemata name from the database
  // When API_IS_PUBLIC=false, we use X-Schemata header instead of Host-based routing
  const DATABASE_ID = process.env.DATABASE_ID;
  const APP_SCHEMATA = process.env.APP_SCHEMATA; // e.g. "agentic-db-1774120949709-edffa638-app-public"
  const API_NAME = process.env.API_NAME; // e.g. "app" — resolves per-database settings

  // Try header-based routing first (X-Api-Name / X-Schemata), fall back to domain-based (Host)
  const useHeaderRouting = !!(DATABASE_ID || APP_SCHEMATA || API_NAME);

  if (useHeaderRouting) {
    console.log(`\nExporting schema via header-based routing`);
    if (API_NAME) console.log(`  api: ${API_NAME}`);
    if (APP_SCHEMATA) console.log(`  schemata: ${APP_SCHEMATA}`);
    if (DATABASE_ID) console.log(`  database_id: ${DATABASE_ID}`);
  } else {
    console.log(`\nExporting schema via domain-based routing`);
    console.log(`  host: app-public-${DATABASE_NAME}.localhost`);
  }
  console.log(`  server: [${CNC_HOST}]:${CNC_PORT}`);
  console.log(`  output: ${path.join(OUTPUT_DIR, OUTPUT_FILE)}\n`);

  // Build request headers based on routing mode
  const reqHeaders: Record<string, string | number> = {};
  if (useHeaderRouting) {
    if (DATABASE_ID) {
      reqHeaders['X-Database-Id'] = DATABASE_ID;
    }
    if (API_NAME) {
      reqHeaders['X-Api-Name'] = API_NAME;
    }
    if (APP_SCHEMATA) {
      reqHeaders['X-Schemata'] = APP_SCHEMATA;
    }
  } else {
    reqHeaders['Host'] = `app-public-${DATABASE_NAME}.localhost`;
  }

  // 1. Run introspection query
  const raw = await httpPost(
    CNC_HOST,
    CNC_PORT,
    '/graphql',
    reqHeaders,
    JSON.stringify({ query: INTROSPECTION_QUERY }),
  );

  const json = JSON.parse(raw) as {
    data?: { __schema: IntrospectionSchema };
    errors?: Array<{ message: string }>;
  };

  if (json.errors?.length) {
    throw new Error(`GraphQL errors: ${json.errors.map((e) => e.message).join(', ')}`);
  }

  if (!json.data?.__schema) {
    throw new Error('No schema data in introspection response');
  }

  // 2. Convert to SDL
  const sdl = introspectionToSDL(json.data.__schema);

  // 3. Write output
  fs.mkdirSync(OUTPUT_DIR, { recursive: true });
  fs.writeFileSync(path.join(OUTPUT_DIR, OUTPUT_FILE), sdl, 'utf-8');

  const typeCount = json.data.__schema.types.filter(
    (t) => !t.name.startsWith('__') && !['String', 'Int', 'Float', 'Boolean', 'ID'].includes(t.name)
  ).length;

  console.log(`Schema exported: ${OUTPUT_FILE}`);
  console.log(`  ${typeCount} types, ${sdl.length} bytes`);
}

main().catch((err) => {
  console.error('\nExport failed:', err.message ?? err);
  process.exit(1);
});
