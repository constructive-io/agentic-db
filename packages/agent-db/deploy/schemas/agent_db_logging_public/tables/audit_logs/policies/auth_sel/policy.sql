-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table


CREATE POLICY auth_sel ON agent_db_logging_public.audit_logs
FOR SELECT
TO authenticated
USING (
  actor_id = jwt_public.current_user_id()
);

