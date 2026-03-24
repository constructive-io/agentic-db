-- Deploy: schemas/agentic_db_profiles_private/trigger_fns/app_profile_permissions_recompute_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous



CREATE FUNCTION agentic_db_profiles_private.app_profile_permissions_recompute_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_profile_id uuid;
    v_permissions bit(24);
BEGIN
    IF (TG_OP = 'DELETE') THEN
        v_profile_id := OLD.profile_id;
    ELSE
        v_profile_id := NEW.profile_id;
    END IF;
    SELECT COALESCE(bit_or(p.bitstr), lpad('', 24, '0')::bit(24))
    INTO v_permissions
    FROM agentic_db_profiles_public.app_profile_permissions pp
    JOIN agentic_db_permissions_public.app_permissions p ON p.id = pp.permission_id
    WHERE pp.profile_id = v_profile_id;
    UPDATE agentic_db_profiles_public.app_profiles
    SET permissions = v_permissions
    WHERE id = v_profile_id;
    IF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

