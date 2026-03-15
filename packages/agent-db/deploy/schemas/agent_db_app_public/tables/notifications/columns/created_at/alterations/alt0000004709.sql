-- Deploy: schemas/agent_db_app_public/tables/notifications/columns/created_at/alterations/alt0000004709
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/notifications/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/notifications/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".notifications 
    ALTER COLUMN created_at SET DEFAULT now();

