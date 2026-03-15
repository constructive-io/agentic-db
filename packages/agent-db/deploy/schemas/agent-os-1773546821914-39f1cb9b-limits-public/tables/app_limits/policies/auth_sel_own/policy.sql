-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/policies/auth_sel_own/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/table


CREATE POLICY auth_sel_own ON "agent-os-1773546821914-39f1cb9b-limits-public".app_limits
FOR SELECT
TO authenticated
USING (
  actor_id = jwt_public.current_user_id()
);

