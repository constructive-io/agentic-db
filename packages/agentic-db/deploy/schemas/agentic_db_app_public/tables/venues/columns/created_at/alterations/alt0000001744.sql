-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/created_at/alterations/alt0000001744
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".venues 
  ALTER COLUMN created_at SET NOT NULL;

