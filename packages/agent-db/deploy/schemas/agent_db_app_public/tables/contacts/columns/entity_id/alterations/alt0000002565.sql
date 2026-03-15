-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/entity_id/alterations/alt0000002565
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/images/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/contacts/columns/entity_id/column


ALTER TABLE "agent_db_app_public".contacts 
  ALTER COLUMN entity_id SET NOT NULL;

