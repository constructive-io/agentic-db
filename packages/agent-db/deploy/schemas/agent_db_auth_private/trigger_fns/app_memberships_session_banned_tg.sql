-- Deploy: schemas/agent_db_auth_private/trigger_fns/app_memberships_session_banned_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema



CREATE FUNCTION "agent_db_auth_private".app_memberships_session_banned_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
BEGIN
    -- Revoke all sessions for the user when banned/disabled
    UPDATE "agent_db_auth_private".sessions 
        SET revoked_at = NOW()
        WHERE user_id = NEW.actor_id
        AND revoked_at IS NULL;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

