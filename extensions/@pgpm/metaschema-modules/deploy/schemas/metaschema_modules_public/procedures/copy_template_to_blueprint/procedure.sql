-- Deploy schemas/metaschema_modules_public/procedures/copy_template_to_blueprint/procedure to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/metaschema_modules_public/tables/blueprint_template/table
-- requires: schemas/metaschema_modules_public/tables/blueprint/table

BEGIN;

CREATE FUNCTION metaschema_modules_public.copy_template_to_blueprint(
    template_id uuid,
    database_id uuid,
    owner_id uuid,
    name_override text DEFAULT NULL,
    display_name_override text DEFAULT NULL
) RETURNS uuid AS $$
#variable_conflict use_variable
DECLARE
    v_template metaschema_modules_public.blueprint_template;
    v_blueprint_id uuid;
    v_blueprint_name text;
    v_blueprint_display_name text;
BEGIN
    -- Load the template
    SELECT * INTO v_template
    FROM metaschema_modules_public.blueprint_template
    WHERE id = template_id;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'COPY_TEMPLATE_TO_BLUEPRINT: template not found for id %', template_id;
    END IF;

    -- Visibility check: owner can always copy, others need public visibility
    IF v_template.owner_id != owner_id AND v_template.visibility != 'public' THEN
        RAISE EXCEPTION 'COPY_TEMPLATE_TO_BLUEPRINT: template % is private and not owned by %', template_id, owner_id;
    END IF;

    -- Resolve names
    v_blueprint_name := COALESCE(name_override, v_template.name);
    v_blueprint_display_name := COALESCE(display_name_override, v_template.display_name);

    -- Create the blueprint with a copy of the template definition
    INSERT INTO metaschema_modules_public.blueprint (
        owner_id,
        database_id,
        name,
        display_name,
        description,
        definition,
        template_id,
        status
    ) VALUES (
        owner_id,
        database_id,
        v_blueprint_name,
        v_blueprint_display_name,
        v_template.description,
        v_template.definition,
        template_id,
        'draft'
    )
    RETURNING id INTO v_blueprint_id;

    -- Increment copy_count on the template
    UPDATE metaschema_modules_public.blueprint_template
    SET copy_count = copy_count + 1,
        updated_at = now()
    WHERE id = template_id;

    RETURN v_blueprint_id;
END;
$$
LANGUAGE 'plpgsql' VOLATILE;

COMMENT ON FUNCTION metaschema_modules_public.copy_template_to_blueprint IS
    'Creates a new blueprint by copying a template definition. Checks visibility: owners can always copy their own templates, others require public visibility. Increments the template copy_count. Returns the new blueprint ID.';

COMMIT;
