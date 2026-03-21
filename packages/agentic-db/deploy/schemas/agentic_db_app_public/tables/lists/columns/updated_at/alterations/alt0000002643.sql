-- Deploy: schemas/agentic_db_app_public/tables/lists/columns/updated_at/alterations/alt0000002643
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/lists/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/lists/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".lists 
  ALTER COLUMN updated_at SET NOT NULL;

