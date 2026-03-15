-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/constraints/audit_logs_actor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
  ADD CONSTRAINT audit_logs_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-users-public".users (id) 
    ON DELETE CASCADE;

