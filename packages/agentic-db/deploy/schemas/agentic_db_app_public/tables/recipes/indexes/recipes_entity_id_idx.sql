-- Deploy: schemas/agentic_db_app_public/tables/recipes/indexes/recipes_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/lists/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/entity_id/column


CREATE INDEX recipes_entity_id_idx ON agentic_db_app_public.recipes USING BTREE ( entity_id );

