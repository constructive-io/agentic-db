/**
 * export.ts — Export GraphQL schema from live API
 */
import * as fs from 'fs';
import * as path from 'path';
import { NodeHttpAdapter } from '@constructive-io/node';

const DATABASE_NAME = process.env.DATABASE_NAME || 'agent-os-1772448876647';
const APP_HOST = `app-public-${DATABASE_NAME}.localhost`;
const GRAPHQL_URL = 'http://[::1]:3000/graphql';

async function main() {
  console.log(`\n📥 Exporting schema from ${APP_HOST}\n`);

  const adapter = new NodeHttpAdapter(GRAPHQL_URL, { Host: APP_HOST });

  const introspectionQuery = `
    query IntrospectionQuery {
      __schema {
        types {
          kind
          name
          description
          fields(includeDeprecated: true) {
            name
            description
            args {
              name
              description
              type { ...TypeRef }
              defaultValue
            }
            type { ...TypeRef }
            isDeprecated
            deprecationReason
          }
          inputFields {
            name
            description
            type { ...TypeRef }
            defaultValue
          }
          interfaces { ...TypeRef }
          enumValues(includeDeprecated: true) {
            name
            description
            isDeprecated
            deprecationReason
          }
          possibleTypes { ...TypeRef }
        }
        directives {
          name
          description
          locations
          args {
            name
            description
            type { ...TypeRef }
            defaultValue
          }
        }
      }
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

  const result = await adapter.execute(introspectionQuery);

  if (!result.ok) {
    console.error('❌ Failed to fetch schema:', result.errors);
    process.exit(1);
  }

  const schemaPath = path.resolve(__dirname, '../agent-os.graphql.json');
  fs.writeFileSync(schemaPath, JSON.stringify(result.data, null, 2));
  console.log(`✅ Schema exported to ${schemaPath}\n`);
}

main().catch((err) => {
  console.error('❌', err.message ?? err);
  process.exit(1);
});
