-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/constraints/deal_contacts_deal_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".deal_contacts 
  ADD CONSTRAINT deal_contacts_deal_id_fkey 
    FOREIGN KEY(deal_id) 
    REFERENCES "agentic_db_app_public".deals (id) 
    ON DELETE CASCADE;

