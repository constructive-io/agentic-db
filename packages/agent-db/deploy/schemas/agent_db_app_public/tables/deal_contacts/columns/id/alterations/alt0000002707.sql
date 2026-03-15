-- Deploy: schemas/agent_db_app_public/tables/deal_contacts/columns/id/alterations/alt0000002707
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deal_contacts/table
-- requires: schemas/agent_db_app_public/tables/deal_contacts/columns/id/column
-- requires: schemas/agent_db_app_public/tables/event_venues/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".deal_contacts 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

