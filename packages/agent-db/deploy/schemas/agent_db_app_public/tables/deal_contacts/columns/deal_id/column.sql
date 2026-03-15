-- Deploy: schemas/agent_db_app_public/tables/deal_contacts/columns/deal_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deal_contacts/table
-- requires: schemas/agent_db_app_public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.deal_contacts 
  ADD COLUMN deal_id uuid;

