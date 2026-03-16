-- Deploy: schemas/agent_db_app_public/tables/deal_contacts/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deal_contacts/table
-- requires: schemas/agent_db_app_public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".deal_contacts 
  ENABLE ROW LEVEL SECURITY;

