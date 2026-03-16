-- Deploy: schemas/agentic_db_app_public/tables/recipes/columns/updated_at/alterations/alt0000001496
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/recipes/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".recipes 
  ALTER COLUMN updated_at SET NOT NULL;

