-- Deploy: schemas/agent_db_app_public/tables/list_items/constraints/list_items_list_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/list_items/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/constraints/habit_logs_habit_id_fkey/constraint


ALTER TABLE agent_db_app_public.list_items 
  ADD CONSTRAINT list_items_list_id_fkey 
    FOREIGN KEY(list_id) 
    REFERENCES agent_db_app_public.lists (id) 
    ON DELETE CASCADE;

