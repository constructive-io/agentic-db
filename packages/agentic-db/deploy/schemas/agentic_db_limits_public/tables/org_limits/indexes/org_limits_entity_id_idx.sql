-- Deploy: schemas/agentic_db_limits_public/tables/org_limits/indexes/org_limits_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limits/table
-- requires: schemas/agentic_db_limits_public/tables/org_limits/columns/entity_id/column


CREATE INDEX org_limits_entity_id_idx ON agentic_db_limits_public.org_limits USING BTREE ( entity_id );

