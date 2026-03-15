-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/trigger_fns/org_profile_permissions_recompute_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/schema



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-profiles-private".org_profile_permissions_recompute_tg ()
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
    FROM "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_permissions pp
    JOIN "agent-os-1773546821914-39f1cb9b-permissions-public".org_permissions p ON p.id = pp.permission_id
    WHERE pp.profile_id = v_profile_id;
    UPDATE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profiles
    SET permissions = v_permissions
    WHERE id = v_profile_id;
    IF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

