-- Deploy: schemas/agent_db_memberships_private/procedures/app_memberships_mask_check/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema



CREATE FUNCTION agent_db_memberships_private.app_memberships_mask_check (mask bit varying, actor_id uuid DEFAULT jwt_public.current_user_id())
  RETURNS boolean
AS $CODEZ$
    SELECT EXISTS (
        SELECT 1 FROM agent_db_memberships_public.app_memberships m
            WHERE m.permissions & mask = mask
            AND m.actor_id = app_memberships_mask_check.actor_id
    );
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION agent_db_memberships_private.app_memberships_mask_check TO authenticated;

