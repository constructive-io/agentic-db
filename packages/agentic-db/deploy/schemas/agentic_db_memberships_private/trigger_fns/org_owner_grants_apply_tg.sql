-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/org_owner_grants_apply_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous



CREATE FUNCTION agentic_db_memberships_private.org_owner_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE agentic_db_memberships_public.org_memberships 
            SET is_owner = TRUE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
    ELSE 
        UPDATE agentic_db_memberships_public.org_memberships 
            SET is_owner = FALSE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
        IF (
            SELECT count(*) < 1 FROM agentic_db_memberships_public.org_memberships 
            WHERE is_owner = TRUE
            AND entity_id = NEW.entity_id
        ) THEN 
            RAISE EXCEPTION 'REQUIRES_ONE_OWNER';
        END IF;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

