$(function () {

    // �C�[�W���O��
    var EN = "easeInOutElastic";

    // ���C���r�W���A���̓����X�s�[�h
    var SP = 550;

    // ���C���r�W���A���̓���ւ��Ԋu
    var IT = 4000;

    // ���C���r�W���A�����͂�DIV
    var photoSetMain = $("#photoset-main");

    // ���C���摜�̐�
    var numMain = $("p", photoSetMain).length;

    // ���C���摜���{�ɂ�����
    var numMainAll = numMain * 2;

    // ���C���r�W���A���̉����i�ꖇ�ڂ���擾�j
    var imageWidth =  $("p:first", photoSetMain).outerWidth();

    // �T���l�C���Q
    var thums = $("#mainvisual-thumb ul li");

    // ���C���摜���{�ɂ���B
    $(photoSetMain.html()).appendTo(photoSetMain);

    // ���݂̃��C���摜�̈ʒu
    var now = 0;

    // �͂��߂̃e�L�X�g�ȊO�S�Ĕ�\��
    $("#mainvisual-txt li:gt(0)").hide();

    // ���C���摜�̓���
    function moveMainVisual() {

        // �����Ă�����~�߂�
        photoSetMain.stop();
        // �����Ō�̈ꖇ��������B
        if (now == numMainAll - 1) {

            // �ꏄ�ڂ̍Ō�̈ꖇ�̃i���o�[�擾
            var returnPoint =  numMain - 1;
            // �ꏄ�ڂ̓����摜�̈ʒu���擾
            var returnLeft  = (imageWidth * returnPoint) * -1;
            // �摜���ꏄ�ڂ̓����摜�ɂ��肩����B
            photoSetMain.css({
                "left" : returnLeft + "px"
            });
            // ���݂̈ʒu�Ɉꏄ�ڂ̍Ō�̉摜�̈ʒu��ݒ�B
            now = returnPoint;
        }
        // ���̉摜�̈ʒu
        now++;
        // ���̉摜�̈ʒu���擾
        var moveLeft = (imageWidth * now) * -1;
        // ���̉摜�܂ŃA�j���[�V�����œ������B
        photoSetMain.animate({
            left : moveLeft
        }, SP);
        // �T���l�C���̘g�̈ʒu��ύX�B
        var thumIndex = now;
        // ���݂̉摜��2���ڂɓ����Ă�����B
        if (now >= numMain) {
            // �T���l�C���̃C���f�b�N�X������o���B
            thumIndex = now - numMain;
        }

        // ���݂̃T���l�C���摜�Ƀt�H�[�J�X�𓖂Ă�B
        setPosition(fcs, thumIndex);
        changeMainText(thumIndex);

    }

    function changeMainText(mi) {
        // �e�L�X�g�̕ύX
        var mvt = $("#mainvisual-txt");
        // �e�L�X�g�̌J��Ԃ��ň�v����e�L�X�g��\������B
        $("p", mvt).each(function(i, v) {
            if (i == mi) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
    }

    // �C���^�[�o���̐ݒ�B
    // ���C���摜�����̊Ԋu�œ�����
    var intervalName = setInterval(moveMainVisual, IT);

    // �{�[�_�[��PX
    var borderPx = 3;

    // ���C���摜�̃z�o�[�A�C���^�[�o���𒲐�
    photoSetMain.hover(

        function() {
            clearInterval(intervalName);
        },

        function() {
            intervalName = setInterval(moveMainVisual, IT);
        }
    );

    // �T���l�C���̃I���}�E�X�ŃJ�[�\�����|�C���^�[�ɂ���B
    thums.css("cursor","pointer");

    // �t�H�[�J�X�G�������g��ID
    var focusElementId = "thumbnailfocus";

    // �t�H�[�J�X�G�������g��body�����ɐ���
    var fcs = $('<a href="javascript:void(0);return false;" id="'
        + focusElementId
        + '" style="cursor:pointer;border:'
        + borderPx
        + 'px solid #000; position:absolute;left:0;top:0;z-index:101;width:30px;height:30px;text-decoration:none;">'
        + '</a>').appendTo("body");


    // �t�H�[�J�X�G�������g�̃f�t�H���g�ʒu��ݒ�
    setPosition(fcs, 0);

    $(window).resize(function() {
        var pos = now;
        if (now >= numMain) {
            pos = now - numMain;
        }
        setPosition(fcs, pos);
    });

    // �T���l�C���t�H�[�J�X�̈ʒu�ƃT�C�Y��ݒ�B
    function setPosition(focusElement, thumIndex, animation) {

        setLinkForFcs(thumIndex);

        var thum = thums.get(thumIndex);
        // �t�H�[�J�X�̈ړ����X�g�b�v
        focusElement.stop();
        // �T���l�C���摜�̏����擾�i�����A�c���A�ʒu�j
        var width  = $("img", thum).width()  - (borderPx * 2);
        var height = $("img", thum).height() - (borderPx * 2);
        var left   = $(thum).offset().left;
        var top    = $(thum).offset().top;

        // �ʒu��񓙂��t�H�[�J�X�ɐݒ肷��B
        var setObj = {
            "width"    : width  + "px"
            , "height" : height + "px"
            , "left"   : left   + "px"
            , "top"    : top    + "px"
        };

        // �����̃A�j���[�V�����t���O�������Ă���ꍇ�̓A�j���[�V�����Ńt�H�[�J�X���ړ�
        if (animation) {
            focusElement.animate(setObj);
        } else {
            focusElement.css(setObj);
        }
    }

    // �T���l�C���ɃJ�[�\�����悹����悹�Ȃ������肵�����B
    thums.hover(
        function() {

            // �T���l�C���ɏ���Ă�ԃC���^�[�o�����~�߂�B
            clearInterval(intervalName);

            // �T���l�C���t�H�[�J�X�̈ړ�
            setPosition(fcs, thums.index(this));

            // ���C�����B�W���A�����T���l�C���Ƒ΂ɂȂ�摜�ւƈړ�
            moveMainVisualCaseHov(thums.index(this));

        },

        function() {
            // �J�[�\�����T���l�C������O�ꂽ�Ƃ��A�C���^�[�o���ĊJ
            intervalName = setInterval(moveMainVisual, IT);
        }
    );

    // �T���l�C�����z�o�[���ꂽ���ɌĂяo�����B
    // ���C���摜�̈ړ��B
    function moveMainVisualCaseHov(hovIndex) {

        // ���C���摜�������Ă�����~�߂�B
        photoSetMain.stop();
        // �z�o�[���ꂽ�T���l�C���̈ʒu���擾
        var movePosition = hovIndex;
        if (now >= numMain) {
            // 2���[�v�ڂɓ����Ă���Ƃ��B
            movePosition = hovIndex + numMain;
        }
        // ���݂̃��C���摜�̈ʒu�Ɉړ����郁�C���摜�̈ʒu��ݒ�
        now = movePosition;
        // �ړ����郁�C���摜�̈ʒu���擾
        var moveLeft = (imageWidth * movePosition) * -1;
        // ���C���摜���ړ�
        photoSetMain.animate({
            left : moveLeft
        }, SP);
        // ���C�����B�W���A���e�L�X�g�̕ύX
        changeMainText(hovIndex);

        $(this).attr("href", $("p a", photoSetMain).get(hovIndex));
    }

    // �t�H�[�J�X�I�u�W�F�N�g�̃z�o�[
    fcs.hover(
        function() {
            clearInterval(intervalName);
        },
        function() {
            intervalName = setInterval(moveMainVisual, IT);
        }
    );

    // ���C�����B�W���A���e�L�X�g�̕ύX
    changeMainText(0);

    // �t�H�[�J�X�I�u�W�F�N�g�Ƀ����N��ݒ�
    function setLinkForFcs(mIndex) {
        
        fcs.attr("href", $("p a", photoSetMain).get(mIndex));
        fcs.attr("target", $($("p a", photoSetMain).get(mIndex)).attr("target"));
    }
});