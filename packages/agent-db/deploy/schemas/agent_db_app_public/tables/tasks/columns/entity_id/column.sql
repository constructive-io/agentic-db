-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/deal_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".tasks 
  ADD COLUMN entity_id uuid;

