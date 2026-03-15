-- Deploy: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/table


CREATE POLICY auth_sel ON "agent-os-1773551593867-bac64076-logging-public".audit_logs
FOR SELECT
TO authenticated
USING (
  actor_id = jwt_public.current_user_id()
);

