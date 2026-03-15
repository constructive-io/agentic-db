-- Deploy: schemas/agent_db_app_public/tables/contact_links/columns/contact_id/alterations/alt0000002709
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_links/table
-- requires: schemas/agent_db_app_public/tables/contact_links/columns/contact_id/column
-- requires: schemas/agent_db_app_public/tables/deal_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".contact_links 
  ALTER COLUMN contact_id SET NOT NULL;

