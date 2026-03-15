-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/constraints/list_items_list_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/constraints/habit_logs_habit_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".list_items 
  ADD CONSTRAINT list_items_list_id_fkey 
    FOREIGN KEY(list_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".lists (id) 
    ON DELETE CASCADE;

