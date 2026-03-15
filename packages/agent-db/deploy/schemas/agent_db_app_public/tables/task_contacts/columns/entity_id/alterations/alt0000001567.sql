-- Deploy: schemas/agent_db_app_public/tables/task_contacts/columns/entity_id/alterations/alt0000001567
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/task_contacts/table
-- requires: schemas/agent_db_app_public/tables/task_contacts/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/list_items/constraints/list_items_list_id_fkey/constraint


ALTER TABLE agent_db_app_public.task_contacts 
  ALTER COLUMN entity_id SET NOT NULL;

