-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/columns/contact_id/alterations/alt0000001028
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/columns/contact_id/column
-- requires: schemas/agentic_db_app_public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".deal_contacts 
  ALTER COLUMN contact_id SET NOT NULL;

