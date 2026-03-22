-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/updated_at/alterations/alt0000001226
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/rules/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".rules 
  ALTER COLUMN updated_at SET NOT NULL;

