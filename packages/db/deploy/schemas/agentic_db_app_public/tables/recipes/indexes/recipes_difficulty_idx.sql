-- Deploy: schemas/agentic_db_app_public/tables/recipes/indexes/recipes_difficulty_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/difficulty/column
-- requires: schemas/agentic_db_app_public/tables/recipes/indexes/recipes_cuisine_idx


CREATE INDEX recipes_difficulty_idx ON "agentic_db_app_public".recipes USING BTREE ( difficulty );

