-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/trigger_fns/app_memberships_session_banned_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-auth-private".app_memberships_session_banned_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
BEGIN
    -- Revoke all sessions for the user when banned/disabled
    UPDATE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
        SET revoked_at = NOW()
        WHERE user_id = NEW.actor_id
        AND revoked_at IS NULL;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

