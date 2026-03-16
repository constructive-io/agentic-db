-- Deploy: schemas/agentic_db_app_public/tables/ideas/columns/updated_at/alterations/alt0000001445
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/ideas/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".ideas 
  ALTER COLUMN updated_at SET NOT NULL;

