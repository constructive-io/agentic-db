-- Deploy: schemas/agentic_db_app_public/tables/integrations/indexes/integrations_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/search_tsv/column
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/entity_id/column


CREATE INDEX integrations_entity_id_idx ON "agentic_db_app_public".integrations USING BTREE ( entity_id );

