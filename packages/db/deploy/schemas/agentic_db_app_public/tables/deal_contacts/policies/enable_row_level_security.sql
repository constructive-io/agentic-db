-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".deal_contacts 
  ENABLE ROW LEVEL SECURITY;

