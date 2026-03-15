-- Deploy: schemas/agent_db_app_public/tables/deal_contacts/constraints/deal_contacts_deal_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deal_contacts/table
-- requires: schemas/agent_db_app_public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".deal_contacts 
  ADD CONSTRAINT deal_contacts_deal_id_fkey 
    FOREIGN KEY(deal_id) 
    REFERENCES "agent_db_app_public".deals (id) 
    ON DELETE CASCADE;

