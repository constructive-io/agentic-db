-- Deploy: schemas/agent_db_limits_private/procedures/org_limits_inc/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_private/schema



CREATE FUNCTION "agent_db_limits_private".org_limits_inc (
    limitname citext,
    entity_id uuid,
    actor_id uuid default jwt_public.current_user_id(),
    amount int default 1
)
  RETURNS BOOLEAN
AS $CODEZ$
DECLARE
    limit_exists boolean;
    max_default int = 0;
    rec "agent_db_limits_public".org_limits;
BEGIN
    SELECT EXISTS (SELECT 1 FROM "agent_db_limits_public".org_limits l
        WHERE l.name = limitname
        AND l.actor_id = org_limits_inc.actor_id
        AND l.entity_id = org_limits_inc.entity_id
    ) INTO limit_exists;
    IF (limit_exists IS FALSE) THEN 
        SELECT max FROM "agent_db_limits_public".org_limit_defaults
            WHERE name = limitname
        INTO max_default;
        IF (NOT FOUND) THEN 
            max_default = 0;
        END IF;
        INSERT INTO "agent_db_limits_public".org_limits (name, num, max, actor_id, entity_id)
        VALUES (limitname, 0, max_default, actor_id, entity_id);
    END IF;
    SELECT * FROM "agent_db_limits_public".org_limits l
        WHERE l.name = limitname
        AND l.actor_id = org_limits_inc.actor_id
        AND l.entity_id = org_limits_inc.entity_id
    INTO rec;
    IF (rec.max < 0 OR rec.max >= rec.num + amount) THEN 
        UPDATE "agent_db_limits_public".org_limits l
        SET num = num + amount
        WHERE l.name = limitname
        AND l.actor_id = org_limits_inc.actor_id
        AND l.entity_id = org_limits_inc.entity_id;
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
    RETURN FALSE;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

