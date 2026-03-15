-- Deploy: schemas/agent_db_app_public/tables/notifications/columns/entity_id/alterations/alt0000004755
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/list_items/columns/ref_type/column
-- requires: schemas/agent_db_app_public/tables/notifications/columns/entity_id/column


ALTER TABLE "agent_db_app_public".notifications 
  ALTER COLUMN entity_id SET NOT NULL;

