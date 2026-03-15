-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_steps/constraints/app_steps_actor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_steps/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_steps 
  ADD CONSTRAINT app_steps_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-users-public".users (id) 
    ON DELETE CASCADE;

