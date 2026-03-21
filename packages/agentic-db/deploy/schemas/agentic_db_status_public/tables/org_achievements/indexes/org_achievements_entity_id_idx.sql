-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/indexes/org_achievements_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table
-- requires: schemas/agentic_db_status_public/tables/org_achievements/columns/entity_id/column


CREATE INDEX org_achievements_entity_id_idx ON agentic_db_status_public.org_achievements USING BTREE ( entity_id );

