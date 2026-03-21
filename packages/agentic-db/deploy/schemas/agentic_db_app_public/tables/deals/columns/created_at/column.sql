-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".deals 
  ADD COLUMN created_at timestamptz;

