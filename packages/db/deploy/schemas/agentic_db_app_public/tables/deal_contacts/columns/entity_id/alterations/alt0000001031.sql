-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/columns/entity_id/alterations/alt0000001031
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".deal_contacts 
  ALTER COLUMN entity_id SET NOT NULL;

