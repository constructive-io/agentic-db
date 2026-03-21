-- Deploy: schemas/agentic_db_app_public/tables/templates/indexes/templates_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/templates/columns/entity_id/column


CREATE INDEX templates_entity_id_idx ON agentic_db_app_public.templates USING BTREE ( entity_id );

