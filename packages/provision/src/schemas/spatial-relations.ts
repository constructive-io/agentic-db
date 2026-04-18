/**
 * spatial-relations.ts — Cross-table PostGIS spatial relations
 *
 * Provisions 5 @spatialRelation virtual relations across the agentic-db
 * schema. Each entry inserts a metaschema_public.spatial_relation row which
 * the sync_spatial_relation_tags trigger projects onto the owner column as
 * a @spatialRelation smart tag. The graphile-postgis PostgisSpatialRelationsPlugin
 * then exposes these as cross-table filters in the GraphQL `where:` input —
 * no FK required, no GeoJSON on the wire.
 *
 * Query shape (generated):
 *   orm.memory.findMany({
 *     where: { nearbyPlaces: { some: { name: { equalTo: 'Bay Area' } } } },
 *   });
 *
 * All 5 entries use `st_dwithin` because every agentic-db geom column is a
 * Point. Radii chosen to match the query intent:
 *
 *   1. memories  → places   @ 5 km    "memories within 5 km of a known place"
 *   2. memories  → contacts @ 2 km    "memories logged near where a contact lives"
 *   3. trips     → venues   @ 1 km    "trips whose destination is near a venue"
 *   4. events    → venues   @ 500 m   "events near a specific venue (no FK)"
 *   5. memories  → memories @ 1 km    "what else happened near this memory" (self)
 *
 * Must run AFTER all domain schemas (source + target tables/columns must exist).
 */

import { requireDatabaseId } from '../helpers';

const databaseId = requireDatabaseId();

interface SpatialRelation {
  sourceTable: string;
  sourceField: string;
  targetTable: string;
  targetField: string;
  name: string;
  operator:
    | 'st_contains'
    | 'st_within'
    | 'st_intersects'
    | 'st_covers'
    | 'st_coveredby'
    | 'st_overlaps'
    | 'st_touches'
    | 'st_dwithin';
  paramName?: string;
  /** Human-readable radius for logging — metres when use_geography:true. */
  radiusLabel?: string;
}

const SPATIAL_RELATIONS: SpatialRelation[] = [
  {
    sourceTable: 'memories',
    sourceField: 'location_geo',
    targetTable: 'places',
    targetField: 'location_geo',
    name: 'nearbyPlaces',
    operator: 'st_dwithin',
    paramName: 'distance',
    radiusLabel: '5 km',
  },
  {
    sourceTable: 'memories',
    sourceField: 'location_geo',
    targetTable: 'contacts',
    targetField: 'location_geo',
    name: 'nearbyContacts',
    operator: 'st_dwithin',
    paramName: 'distance',
    radiusLabel: '2 km',
  },
  {
    sourceTable: 'trips',
    sourceField: 'destination_geo',
    targetTable: 'venues',
    targetField: 'location',
    name: 'nearbyVenues',
    operator: 'st_dwithin',
    paramName: 'distance',
    radiusLabel: '1 km',
  },
  {
    sourceTable: 'events',
    sourceField: 'location_geo',
    targetTable: 'venues',
    targetField: 'location',
    name: 'nearbyVenues',
    operator: 'st_dwithin',
    paramName: 'distance',
    radiusLabel: '500 m',
  },
  {
    sourceTable: 'memories',
    sourceField: 'location_geo',
    targetTable: 'memories',
    targetField: 'location_geo',
    name: 'nearbyMemories',
    operator: 'st_dwithin',
    paramName: 'distance',
    radiusLabel: '1 km',
  },
];

async function main() {
  console.log('\n🗺️  Spatial Relations\n');
  console.log(`   ${SPATIAL_RELATIONS.length} @spatialRelation virtual filters\n`);

  const { Pool } = await import('pg');
  const pool = new Pool({ database: process.env.PGDATABASE || 'constructive' });

  try {
    await pool.query("SET statement_timeout = '600s'");

    // Resolve app_public schema id (avoids ambiguity with other 'memories'
    // style table names in other schemas, matching cross-relations.ts).
    const { rows: schemaRows } = await pool.query(
      `SELECT id FROM metaschema_public.schema
       WHERE database_id = $1 AND name = 'app_public' LIMIT 1`,
      [databaseId]
    );
    const appSchemaId = schemaRows[0]?.id;
    if (!appSchemaId) throw new Error('Could not resolve app_public schema id');

    async function resolveTableId(name: string): Promise<string> {
      const { rows } = await pool.query(
        `SELECT id FROM metaschema_public."table"
         WHERE database_id = $1 AND schema_id = $2 AND name = $3 LIMIT 1`,
        [databaseId, appSchemaId, name]
      );
      if (!rows[0]?.id) throw new Error(`Table '${name}' not found in app_public`);
      return rows[0].id;
    }

    async function resolveFieldId(
      tableId: string,
      fieldName: string
    ): Promise<string> {
      const { rows } = await pool.query(
        `SELECT id FROM metaschema_public.field
         WHERE database_id = $1 AND table_id = $2 AND name = $3 LIMIT 1`,
        [databaseId, tableId, fieldName]
      );
      if (!rows[0]?.id) {
        throw new Error(`Field '${fieldName}' not found on table ${tableId}`);
      }
      return rows[0].id;
    }

    for (const rel of SPATIAL_RELATIONS) {
      try {
        const sourceTableId = await resolveTableId(rel.sourceTable);
        const targetTableId = await resolveTableId(rel.targetTable);
        const sourceFieldId = await resolveFieldId(sourceTableId, rel.sourceField);
        const targetFieldId = await resolveFieldId(targetTableId, rel.targetField);

        await pool.query(
          `SELECT metaschema_modules_public.provision_spatial_relation(
             p_database_id     := $1::uuid,
             p_source_table_id := $2::uuid,
             p_source_field_id := $3::uuid,
             p_target_table_id := $4::uuid,
             p_target_field_id := $5::uuid,
             p_name            := $6,
             p_operator        := $7,
             p_param_name      := $8
           )`,
          [
            databaseId,
            sourceTableId,
            sourceFieldId,
            targetTableId,
            targetFieldId,
            rel.name,
            rel.operator,
            rel.paramName ?? null,
          ]
        );

        const label = rel.radiusLabel ? ` @ ${rel.radiusLabel}` : '';
        console.log(
          `   ✓ ${rel.sourceTable}.${rel.sourceField} → ${rel.targetTable}.${rel.targetField} ` +
            `(${rel.operator}${label}) as "${rel.name}"`
        );
      } catch (err: unknown) {
        const msg = err instanceof Error ? err.message : String(err);
        if (msg.includes('already exists') || msg.includes('duplicate key')) {
          console.log(
            `   • ${rel.sourceTable} → ${rel.targetTable} "${rel.name}" (exists)`
          );
        } else {
          console.error(
            `   ✗ ${rel.sourceTable} → ${rel.targetTable} "${rel.name}": ${msg.slice(0, 300)}`
          );
        }
      }
    }

    console.log('\n✅ Spatial relations complete!\n');
  } finally {
    await pool.end();
  }
}

export { main as default };
