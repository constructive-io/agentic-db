-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/policies/auth_sel/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE POLICY auth_sel ON agentic_db_logging_public.audit_logs
FOR SELECT
TO authenticated
USING (
  actor_id = jwt_public.current_user_id()
);

