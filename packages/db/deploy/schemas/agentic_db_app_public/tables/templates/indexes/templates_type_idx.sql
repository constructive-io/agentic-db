-- Deploy: schemas/agentic_db_app_public/tables/templates/indexes/templates_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/type/column
-- requires: schemas/agentic_db_app_public/tables/recipes/indexes/recipes_difficulty_idx


CREATE INDEX templates_type_idx ON "agentic_db_app_public".templates USING BTREE ( type );

