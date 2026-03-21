-- Deploy: schemas/agentic_db_app_public/tables/recipe_chunks/indexes/recipe_chunks_recipe_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/table
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/columns/recipe_id/column
-- requires: schemas/agentic_db_app_public/tables/list_chunks/indexes/list_chunks_list_id_idx


CREATE INDEX recipe_chunks_recipe_id_idx ON "agentic_db_app_public".recipe_chunks USING BTREE ( recipe_id );

