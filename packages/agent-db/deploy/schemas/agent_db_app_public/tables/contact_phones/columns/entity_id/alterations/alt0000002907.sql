-- Deploy: schemas/agent_db_app_public/tables/contact_phones/columns/entity_id/alterations/alt0000002907
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_phones/table
-- requires: schemas/agent_db_app_public/tables/contact_emails/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/contact_phones/columns/entity_id/column


ALTER TABLE "agent_db_app_public".contact_phones 
  ALTER COLUMN entity_id SET NOT NULL;

