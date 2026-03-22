-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/app_mbr_create
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table



CREATE FUNCTION agentic_db_memberships_private.app_mbr_create ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
BEGIN
    INSERT INTO
    agentic_db_memberships_public.app_memberships
      (actor_id)
    VALUES
      (NEW.id);
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

