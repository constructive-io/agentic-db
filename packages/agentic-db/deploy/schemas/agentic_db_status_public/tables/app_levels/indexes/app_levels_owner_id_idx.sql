-- Deploy: schemas/agentic_db_status_public/tables/app_levels/indexes/app_levels_owner_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_levels/table
-- requires: schemas/agentic_db_status_public/tables/app_levels/columns/owner_id/column


CREATE INDEX app_levels_owner_id_idx ON "agentic_db_status_public".app_levels USING BTREE ( owner_id );

