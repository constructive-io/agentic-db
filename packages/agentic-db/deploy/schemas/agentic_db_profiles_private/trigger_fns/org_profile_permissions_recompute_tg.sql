-- Deploy: schemas/agentic_db_profiles_private/trigger_fns/org_profile_permissions_recompute_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_private/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_permissions/table


CREATE FUNCTION agentic_db_profiles_private.org_profile_permissions_recompute_tg() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  v_profile_id uuid;
  v_permissions bit(24);
BEGIN
  IF TG_OP = 'DELETE' THEN
    SELECT OLD.profile_id INTO v_profile_id;
  ELSE
    SELECT NEW.profile_id INTO v_profile_id;
  END IF;
  SELECT coalesce(bit_or(p.bitstr), (lpad('', 24, '0'))::bit(24)::bit(24))
  FROM agentic_db_profiles_public.org_profile_permissions AS pp INNER JOIN agentic_db_permissions_public.org_permissions AS p ON p.id = pp.permission_id
  WHERE
    pp.profile_id = v_profile_id INTO v_permissions;
  UPDATE agentic_db_profiles_public.org_profiles SET
  permissions = v_permissions
  WHERE
    id = v_profile_id;
  IF TG_OP = 'DELETE' THEN
    RETURN OLD;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

