-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/id/alterations/alt0000004261
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/id/column
-- requires: schemas/agent_db_app_public/tables/deal_contacts/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".tasks 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

