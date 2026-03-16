-- Deploy: schemas/agent_db_app_public/tables/event_notes/columns/event_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_notes/table
-- requires: schemas/agent_db_app_public/tables/deal_notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".event_notes 
  ADD COLUMN event_id uuid;

