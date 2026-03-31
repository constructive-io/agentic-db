-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/constraints/audit_logs_actor_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table


ALTER TABLE agentic_db_logging_public.audit_logs 
  ADD CONSTRAINT audit_logs_actor_id_fkey 
    FOREIGN KEY(actor_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE SET NULL;

