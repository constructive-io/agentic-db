-- Deploy: schemas/agent_db_app_public/tables/event_images/columns/event_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_images/table
-- requires: schemas/agent_db_app_public/tables/company_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".event_images 
  ADD COLUMN event_id uuid;

