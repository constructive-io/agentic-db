-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/created_at/alterations/alt0000001463
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/habits/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".habits 
  ALTER COLUMN created_at SET NOT NULL;

