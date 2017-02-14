import AVFoundation

/**
 Position of the drawn waveform:
 - **top**: Draws the waveform at the top of the image, such that only the bottom 50% are visible.
 - **top**: Draws the waveform in the middle the image, such that the entire waveform is visible.
 - **bottom**: Draws the waveform at the bottom of the image, such that only the top 50% are visible.
 */
public enum WaveformPosition: Int {
    case top    = -1
    case middle =  0
    case bottom =  1
}

/**
 Style of the waveform which is used during drawing:
 - **filled**: Use solid color for the waveform.
 - **gradient**: Use gradient based on color for the waveform.
 - **striped**: Use striped filling based on color for the waveform.
 */
public enum WaveformStyle: Int {
    case filled = 0
    case gradient
    case striped
}

/// Allows customization of the waveform output image.
public struct WaveformConfiguration {
    /// Desired output size of the waveform image, works together with scale.
    let size: CGSize

    /// Color of the waveform, defaults to black.
    let color: UIColor

    /// Background color of the waveform, defaults to white.
    let backgroundColor: UIColor

    /// Waveform drawing style, defaults to .gradient.
    let style: WaveformStyle

    /// Waveform drawing position, defaults to .middle.
    let position: WaveformPosition

    /// Scale to be applied to the image, defaults to main screen's scale.
    let scale: CGFloat

    /// Optional padding or vertical shrinking factor for the waveform.
    let paddingFactor: CGFloat?

    public init(size: CGSize,
                color: UIColor = UIColor.black,
                backgroundColor: UIColor = UIColor.white,
                style: WaveformStyle = .gradient,
                position: WaveformPosition = .middle,
                scale: CGFloat = UIScreen.main.scale,
                paddingFactor: CGFloat? = nil) {
        self.color = color
        self.backgroundColor = UIColor.white
        self.style = style
        self.position = position
        self.size = size
        self.scale = scale
        self.paddingFactor = paddingFactor
    }
}
