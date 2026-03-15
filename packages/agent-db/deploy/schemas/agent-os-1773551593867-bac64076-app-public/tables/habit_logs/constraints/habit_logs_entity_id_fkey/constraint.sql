-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/constraints/habit_logs_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habit_logs 
  ADD CONSTRAINT habit_logs_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;

