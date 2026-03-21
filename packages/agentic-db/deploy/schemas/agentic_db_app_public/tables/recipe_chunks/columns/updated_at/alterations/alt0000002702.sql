-- Deploy: schemas/agentic_db_app_public/tables/recipe_chunks/columns/updated_at/alterations/alt0000002702
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/table
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".recipe_chunks 
  ALTER COLUMN updated_at SET NOT NULL;

