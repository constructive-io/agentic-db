-- Deploy: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/constraints/audit_logs_actor_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
  ADD CONSTRAINT audit_logs_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-users-public".users (id) 
    ON DELETE CASCADE;

