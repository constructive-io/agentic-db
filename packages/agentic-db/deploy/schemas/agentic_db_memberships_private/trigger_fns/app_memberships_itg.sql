-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/app_memberships_itg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/agentic_db_permissions_public/tables/app_permission_defaults/table


CREATE FUNCTION agentic_db_memberships_private.app_memberships_itg() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  bitlen int := bit_length(NEW.permissions);
  defaults bit varying;
  memdefs agentic_db_memberships_public.app_membership_defaults;
BEGIN
  SELECT *
  FROM agentic_db_memberships_public.app_membership_defaults AS t
  LIMIT
  1 INTO memdefs;
  IF FOUND THEN
    new.is_approved := memdefs.is_approved;
    new.is_verified := memdefs.is_verified;
  END IF;
  IF NEW.is_owner IS true THEN
    new.is_admin := true;
    new.is_approved := true;
    new.is_verified := true;
    new.is_disabled := false;
    new.is_banned := false;
  END IF;
  new.is_active := ((NEW.is_approved IS true AND NEW.is_verified IS true) AND NEW.is_disabled IS false) AND NEW.is_banned IS false;
  SELECT permissions
  FROM agentic_db_permissions_public.app_permission_defaults AS t
  LIMIT
  1 INTO defaults;
  IF NOT (FOUND) THEN
    new.granted := lpad('', bitlen::int, '0');
  ELSE
    new.granted := defaults;
  END IF;
  IF NEW.is_admin IS true OR NEW.is_owner IS true THEN
    new.permissions := lpad('', bitlen::int, '1');
  ELSE
    new.permissions := NEW.granted;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

