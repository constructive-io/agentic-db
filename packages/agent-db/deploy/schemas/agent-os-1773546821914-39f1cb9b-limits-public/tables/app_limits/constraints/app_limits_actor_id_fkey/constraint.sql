-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/constraints/app_limits_actor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limits 
  ADD CONSTRAINT app_limits_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-users-public".users (id) 
    ON DELETE CASCADE;

